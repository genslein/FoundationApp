require 'rails_helper'

RSpec.describe "blog_posts/index", type: :view do
  before(:each) do
    assign(:blog_posts, [
      BlogPost.create!(
        :title => "MyText",
        :body => "MyText"
      ),
      BlogPost.create!(
        :title => "MyText",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of blog_posts" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
