class ProjectInfoPresenter
  attr_reader :project
  delegate :github_path, to: :project

  def initialize(project)
    @project = project
  end

  def star_count
    repository['stargazerCount']
  end

  def description
    repository['description']
  end

  def homepage_url
    repository['homepageUrl']
  end

  def license_name
    repository['licenseInfo']['name']
  end

  def fork_count
    repository['forkCount']
  end

  def last_commit_time
    Time.parse(repository['defaultBranchRef']['target']['authoredDate'])
  end

  private

  def repository
    project.info['repository']
  end
end
