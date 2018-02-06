require 'rails_helper'

  RSpec.describe 'Task Requests', type: :request do
    let(:homework) {FactoryBot.create(:homework)}
    let(:email) {FactoryBot.create(:email)}

    it "returns a list of tasks" do
      task1 = homework
      task2 = email

      get v1_tasks_path

      json = JSON.parse(response.body)

       expect(response).to be_success
       expect(json.length).to eq(2)
    end
  end
