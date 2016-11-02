 namespace :newsletter_emails do
    desc "Monthly newsletter to subscribers"
    task :monthly_email => :environment do
      Newsletter.all.each do |n|
        MessageMailer.newsletter_email(n).deliver
      end
    end
end