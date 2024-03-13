module ApplicationHelper

    def default_meta_tags
        {
          site: 'まほゼロ',
          title: '魔法少女:Level0',
          reverse: true,
          charset: 'utf-8',
          description: '魔法少女に変身・・・！自己診断アプリ',
          keywords: '魔法少女,まほゼロ,自己診断アプリ,転職',
          canonical: request.original_url,
          separator: '|',
          og: {
            site_name: :site,
            title: :title,
            description: :description,
            type: 'website',
            url: request.original_url,
            image: image_url('ogp.png'),
            local: 'ja-JP'
          },
          # Twitter用設定
          twitter: {
            card: 'summary_large_image',
            site: '@',
            image: 'https://magical-girl-zero-027819c943b4.herokuapp.com/assets/Setsumei.png'
          }
        }
      end

end
