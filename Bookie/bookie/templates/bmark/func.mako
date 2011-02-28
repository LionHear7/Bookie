<%def name="bmark_block(bmark)">
    <div class="yui3-u-1">
        <div class="yui3-g bmark">
            <div class="yui3-u-1-8">${bmark.stored.strftime("%m/%d")}</div>
            <div class="yui3-u-3-4">
                <a href="${bmark.url}">${bmark.description}</a>
            </div>
            <div class="yui3-u-1-8">
                <span><a href="#">edit</a></span>
                <span><a href="#">delete</a></span>
            </div>

            <div class="yui3-u-1-8">&nbsp;</div>
            <div class="yui3-u-3-4">
                % for tag in bmark.tags:
                    <a href="${request.route_url('tag_bmarks', tag=tag, page=prev)}">${tag}</a>
                %endfor
            </div>
            <div class="yui3-u-1-8">${bmark.stored.strftime('%H:%M%P')}</div>
        </div>
    </div>
</%def>