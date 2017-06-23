<!-- 产品列表 $$$$editer -->
{include file="orderforms/standard_cart/common.tpl"}

<section id="main-body" class="wrap">

    <div class="row">
        <div class="col-xs-12 main-content">
            <div class="products" id="products">
                <div class="banner">
                    <h1>今天，购买进阶版，立减 50%，仅售 ￥64 元/年！</h1>
                    <h2>购买 <strong>进阶版</strong> 产品，在支付页面输入优惠码 <code>10EAJ3FB9Y</code> 立减 <strong>50%</strong>！</h2>
                    <p class="text-muted">
                        活动周期：3天，每日限量200名，活动结束后恢复原价，仅限购买进阶版产品
                    </p>
                    <div class="btns">
                        <a href="/cart.php?a=confproduct&i=0" class="btn btn-reverse primary">限时半价抢购</a>
                    </div>
                </div>
                <div class="cart-title">
                    <h1>开通服务<small>直接选择对应的服务即可开通账号</small></h1>
                </div>
                <!-- <div class="alert text-center">
                    <p>使用优惠码 <code>JJ50P</code>，购买进阶版服务，立减 50%，现在只需支付 ￥64元，促销活动有效期 3 天，每天限量 200 个，<a href="">立即抢购</a></p>
                </div> -->
                
                {foreach $products as $key => $product}

               <!--  {if $key%2 == 0}
                    <div class="row row-eq-height">
                {/if} -->
                <div class="col-md-6">
                    <div class="card {if $key == 0}card-elite{/if}" id="product{$product@iteration}">
                        <h4 class="card-heading" id="product{$product@iteration}-name">
                            {$product.name}
                            {if $product.qty}
                                <span class="elite-text">
                                    {$product.qty} {$LANG.orderavailable}
                                </span>
                            {/if}

                        </h4>
                        <div class="content">
                            <div class="card-right">
                            <!-- {$product@iteration} -->
                                <div class="product-price">
                                    {if $product.bid}
                                        {$LANG.bundledeal}<br />
                                        {if $product.displayprice}
                                            <span class="price">{$product.displayprice}</span>
                                        {/if}
                                    {else}
                                        {if $product.pricing.hasconfigoptions}
                                            {$LANG.startingfrom}
                                            <br />
                                        {/if}
                                        <span class="price">{$product.pricing.minprice.price}</span>
                                        <br />
                                        {if $product.pricing.minprice.cycle eq "monthly"}
                                            {$LANG.orderpaymenttermmonthly}
                                        {elseif $product.pricing.minprice.cycle eq "quarterly"}
                                            {$LANG.orderpaymenttermquarterly}
                                        {elseif $product.pricing.minprice.cycle eq "semiannually"}
                                            {$LANG.orderpaymenttermsemiannually}
                                        {elseif $product.pricing.minprice.cycle eq "annually"}
                                            {$LANG.orderpaymenttermannually}
                                        {elseif $product.pricing.minprice.cycle eq "biennially"}
                                            {$LANG.orderpaymenttermbiennially}
                                        {elseif $product.pricing.minprice.cycle eq "triennially"}
                                            {$LANG.orderpaymenttermtriennially}
                                        {/if}
                                        <br>
                                        {if $product.pricing.minprice.setupFee}
                                            <small>{$product.pricing.minprice.setupFee->toPrefixed()} {$LANG.ordersetupfee}</small>
                                        {/if}
                                    {/if}
                                </div>
                                <div class="order">
                                    <a href="cart.php?a=add&{if $product.bid}bid={$product.bid}{else}pid={$product.pid}{/if}" class="btn btn-primary" id="product{$product@iteration}-order-button">
                                        <i class="fa fa-shopping-cart"></i>
                                        {$LANG.ordernowbutton}
                                    </a>
                                </div>
                            </div>
                            <div class="product-desc">
                                {if $product.featuresdesc}
                                    <p id="product{$product@iteration}-description">
                                        {$product.featuresdesc}
                                    </p>
                                {/if}
                                <ul>
                                    {foreach $product.features as $feature => $value}
                                        <li id="product{$product@iteration}-feature{$value@iteration}">
                                            <span class="feature-value">{$value}</span>
                                            {$feature}
                                        </li>
                                    {/foreach}
                                </ul>
                            </div>
                            <ol>
                                <li>同一个账号限 3 个PC终端和 3 个移动终端使用，如需更多设备请升级至高级别套餐</li>
                                <li>流量不允许滥用，如长时间观看在线视频或下载大文件等，滥用流量将被封停服务并不退款</li>
                            </ol>
                            <br>
                        </div>
                    </div>
                </div>
                <!-- {if ($key neq 0) && ($key%2 == 0)}
                    </div>
                {/if} -->
                {/foreach}
            </div>
        </div>
        <!-- <div class="pull-md-right col-md-9">

            <div class="header-lined">
                <h1>
                    {if $productGroup.headline}
                        {$productGroup.headline}
                    {else}
                        {$productGroup.name}
                    {/if}
                </h1>
                {if $productGroup.tagline}
                    <p>{$productGroup.tagline}</p>
                {/if}
            </div>
            {if $errormessage}
                <div class="alert alert-danger">
                    {$errormessage}
                </div>
            {/if}
        </div> -->

        <!-- <div class="col-md-3 pull-md-left sidebar hidden-xs hidden-sm">
            {include file="orderforms/standard_cart/sidebar-categories.tpl"}
        </div> -->
    </div>
</section>
