require 'nokogiri'
require 'open-uri'

class Review < ActiveRecord::Base
  belongs_to :cloth
  #무신사 크롤링
  # url = "http://store.musinsa.com/app/product/detail/735721/0"
  # #노코기리 파서로 HTML 형태로 분류한 형태의 데이터를 data 변수에 저장한다.
  # data = Nokogiri::HTML(open(url))
  # #.css selector로 tbody 안의 tr 내용들만 가져온다.
  # @reviews = data.css('.galleryList .nslist_post')

  # @reviews.each do |review|
  #   Review.create(
  #     :shop => "musinsa",
  #     :price => "25500",
  #     :size => review.css('div.postRight div.postContents div.content_object a span').text.strip,
  #     :content => review.css('div.postRight div.postContents div.pContent div.summary div.cArea div.pContent_text span').text.strip,
  #     :date => review.css('div.postRight div.postContents div.profile p span.date').text.strip,
  #     :image => ""
  #   )
  # end
  
  # #옥션 크롤링
  # url = "http://itempage3.auction.co.kr/DetailView.aspx?itemno=B512089607"
  # #노코기리 파서로 HTML 형태로 분류한 형태의 데이터를 data 변수에 저장한다.
  # data = Nokogiri::HTML(open(url))
  # #.css selector로 tbody 안의 tr 내용들만 가져온다.
  # @reviews = data.css('tbody tr')

  # @reviews.each do |review|
  #   Review.create(
  #     :shop => "Auction",
  #     :price => "25920",
  #     :size => review.css('td div.coment-wrap div.coment-title em.option span').text.strip,
  #     :content => review.css('td div.coment-wrap p.coment').text.strip,
  #     :date => review.css('td.coment-info ul li.date').text.strip,
  #     :image => ""
  #   )
  # end
  
  # #쿠팡 크롤링
  # url = "http://www.coupang.com/vp/products/61166033?itemId=209724941&vendorItemId=3497300186&
  # q=%EC%B9%BC%ED%95%98%ED%8A%B8+%EB%B0%98%ED%8C%94%ED%8B%B0&itemsCount=36&searchId
  # =ce360ae8d9eb46d0aae94d56328e1688&rank=0"
  # #노코기리 파서로 HTML 형태로 분류한 형태의 데이터를 data 변수에 저장한다.
  # data = Nokogiri::HTML(open(url))
  # #.css selector로 tbody 안의 tr 내용들만 가져온다.
  # @reviews = data.css('selection.js_reviewArticleListContainer')

  # @reviews.each do |review|
  #   Review.create(
  #     :shop => "Coupang",
  #     :price => "26900",
  #     :size => review.css('article.js_reviewArticleReviewList div.sdp-review__article__list__info div.sdp-review__article__list__info__product-info__name').text.strip,
  #     :content => review.css('article.js_reviewArticleReviewList div.sdp-review__article__list__review js_reviewArticleContentContainer div.sdp-review__article__list__review__content js_reviewArticleContent').text.strip,
  #     :date => review.css('article.js_reviewArticleReviewList div.sdp-review__article__list__info div.sdp-review__article__list__info__product-info div.sdp-review__article__list__info__product-info__reg-date').text.strip,
  #     :image => ""
  #   )
  # end
end
