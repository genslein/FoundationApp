require 'rails_helper'

RSpec.describe "blog_posts/new", type: :view do
  before(:each) do
    assign(:blog_post, BlogPost.new(
      :title => "MyText",
      :body => "MyText"
    ))
  end

  it "renders new blog_post form" do
    render

    assert_select "form[action=?][method=?]", blog_posts_path, "post" do

      assert_select "textarea#blog_post_title[name=?]", "blog_post[title]"

      assert_select "textarea#blog_post_body[name=?]", "blog_post[body]"
    end
  end
end
