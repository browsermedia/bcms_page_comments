require File.join(File.dirname(__FILE__), '/../../test_helper')

class MostCommentedOnPortletTest < ActiveSupport::TestCase



  def teardown

  end

  class StubPortlet
    attr_accessor :number_to_show
  end

  test "Finds only a limited # of pages" do
    build_pages
    portlet = MostCommentedOnPortlet.new

    portlet = MostCommentedOnPortlet.new
    params = StubPortlet.new
    params.number_to_show = 1
    portlet.instance_variable_set(:@portlet, params)

    portlet.render

    assert_equal 1, portlet.instance_variable_get(:@pages).size

  end




  test "Find pages" do
    build_pages
    portlet = MostCommentedOnPortlet.new

    pages = portlet.most_popular_pages(2)
    assert_equal 2, pages.size
    assert_equal @popular.name, pages[0].name
    assert_equal "3", pages[0].comments_count
    assert_equal "/popular", pages[0].path

    assert_equal @middle.name, pages[1].name
    assert_equal "/middle", pages[1].path
  end
  private

  def build_pages
    @lonely = Page.create!(:name => "Lonely", :path=>"/lonely")
    @popular = Page.create!(:name => "Popular", :path=>"/popular")
    @middle = Page.create!(:name => "Middle", :path=>"/middle")

    PageComment.create!(:page=>@lonely)

    PageComment.create!(:page=>@middle)
    PageComment.create!(:page=>@middle)

    PageComment.create!(:page=>@popular)
    PageComment.create!(:page=>@popular)
    PageComment.create!(:page=>@popular)
  end
end