namespace :db do
  desc "Load seed fixtures (from db/seed) into the current environment's database." 
  task :seed => :environment do
    require 'active_record/fixtures'
    Dir.glob(RAILS_ROOT + '/db/seed/*.yml').each do |file|
      Fixtures.create_fixtures('db/seed', File.basename(file, '.*'))
    end
  end
end
