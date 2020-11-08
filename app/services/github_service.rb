class GithubService
  RepoInfoQuery = Github::Client.parse <<-'GRAPHQL'
    query($owner: String!, $name: String!) {
      repository(owner: $owner, name: $name) {
        id
        createdAt
        description
        stargazerCount
        forkCount
        homepageUrl
        isArchived
        licenseInfo {
          name
          description
          pseudoLicense
        }
        primaryLanguage {
          name
        }
        defaultBranchRef {
          name
          target {
            ... on Commit {
              authoredDate
            }
          }
        }
      }
    }
  GRAPHQL

  def call(repo_name)
    owner, name = repo_name.split('/')
    response = Github::Client.query(RepoInfoQuery,
                                    variables: { owner: owner, name: name })

    return false if response.data.errors.any?

    response.data
  end
end
