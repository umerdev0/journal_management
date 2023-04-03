class EntriesController < ApplicationController
  before_action :set_journal
  before_action :set_entry, only: %i[ show edit update destroy ]

  def index
    @entries = Entry.all

    render json: @entries
  end

  def show
    render json: @entry
  end

  def create
    @entry = @journal.entries.new(entry_params)

    if @entry.save
      render json: @entry, status: :created, location: [@journal, @entry]
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  def update
    if @entry.update(entry_params)
      render json: @entry
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @entry.destroy
    render json: { message: "Entry deleted" }
  end

  private

  def set_entry
    @entry = @journal.entries.find_by_id(params[:id])
    render json: { error: "Entry not found" }, status: 404 unless @entry
  end

  def set_journal
    @journal = Journal.find_by_id(params[:journal_id])
    render json: { error: "Journal not found" }, status: 404 unless @journal
  end

  def entry_params
    params.require(:entry).permit(:body)
  end
end
