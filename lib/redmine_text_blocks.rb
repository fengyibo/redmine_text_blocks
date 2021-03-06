require 'redmine_text_blocks/view_hooks'

module RedmineTextBlocks
  def self.setup
    RedmineTextBlocks::ProjectPatch.apply
    ProjectsController.send :helper, RedmineTextBlocks::ProjectSettingsTabs
    IssuesController.send :helper, TextBlocksHelper
  end
end
