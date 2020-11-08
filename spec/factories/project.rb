FactoryBot.define do
  factory :project do
    github_path { 'heartcombo/simple_form' }
    association :category, factory: :category

    trait :invalid do
      github_path { '' }
    end

    trait :with_info do
      info { {"repository"=>{"id"=>"MDEwOlJlcG9zaXRvcnk0NTEwMzU=", "createdAt"=>"2009-12-28T14:23:48Z", "forkCount"=>1283, "isArchived"=>false, "description"=>"Forms made easy for Rails! It's tied to a simple DSL, with no opinion on markup.", "homepageUrl"=>"http://blog.plataformatec.com.br/tag/simple_form", "licenseInfo"=>{"name"=>"MIT License", "description"=>"A short and simple permissive license with conditions only requiring preservation of copyright and license notices. Licensed works, modifications, and larger works may be distributed under different terms and without source code.", "pseudoLicense"=>false}, "stargazerCount"=>7676, "primaryLanguage"=>{"name"=>"Ruby"}, "defaultBranchRef"=>{"name"=>"master", "target"=>{"__typename"=>"Commit", "authoredDate"=>"2020-11-03T13:27:59Z"}}}} }
    end
  end
end
