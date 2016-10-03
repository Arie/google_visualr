module GoogleVisualr

  module Rails

    module ViewHelper

      extend ActiveSupport::Concern

      included do
        helper_method "render_chart" if respond_to?(:helper_method)
      end

      def render_chart(chart, dom)
        chart.to_js(dom).html_safe
      end

    end

  end

end
