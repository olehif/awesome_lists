class Project < ApplicationRecord
  belongs_to :category

  validates :github_path, :info, presence: true

  before_validation :fetch_github_data

  # I would move this logic outside of model in most cases, but
  # according to requirements fetching data seems like part of
  # Project lifecycle
  def fetch_github_data
    self.info = GithubInfoFetcher.new.call(github_path).to_h
  end
end
