<footer>
  <div class="quick-links">
      <div class="row">
          <div class="col-md-3">
              <dl>
                  <dt>服务与支持</dt>
                  <dd><a rel="nofollow" href="/submitticket.php?step=2&deptid=1" target="_blank">售前咨询</a></dd>
                  <dd><a rel="nofollow" href="/cart.php" target="_blank">购买服务</a></dd>
                  <dd><a rel="nofollow" href="/cart.php?gid=addons" target="_blank">附加服务</a></dd>
                  <dd><a href="" target="_blank">使用协议</a></dd>
              </dl>
          </div>
          <div class="col-md-3">
              <dl>
                  <dt>资源下载</dt>
                  <dd><a href="/help/2017/05/31/windows/" target="_blank">Windows客户端</a></dd>
                  <dd><a href="/help/2017/06/01/macbook/" target="_blank">Mac osx客户端</a></dd>
                  <dd><a href="/help/2017/06/01/ios/" target="_blank">iOS客户端</a></dd>
                  <dd><a href="/help/2017/05/31/android/" target="_blank">Android客户端</a></dd>
                  <dd><a href="/help/2017/06/01/proxifier/" target="_blank">其它客户端</a></dd>
              </dl>
          </div>
          <div class="col-md-3">
              <dl>
                  <dt>快捷菜单</dt>
                  <dd><a rel="nofollow" href="/clientarea.php" target="_blank">控制面板</a></dd>
                  <dd><a rel="nofollow" href="/submitticket.php?step=2&deptid=1" target="_blank">提交工单</a></dd>
                  <dd><a rel="nofollow" href="/supporttickets.php" target="_blank">我的工单</a></dd>
                  <dd><a rel="nofollow" href="/clientarea.php?action=services" target="_blank">我的服务</a></dd>
              </dl>
          </div>
          <div class="col-md-3">
              <dl>
                  <dt>财务管理</dt>
                  <dd><a rel="nofollow" href="/clientarea.php?action=invoices" target="_blank">我的账单</a></dd>
                  <dd><a rel="nofollow" href="/clientarea.php?action=masspay&all=true" target="_blank">批量付款</a></dd>
              </dl>
          </div>
      </div>
  </div>
  <div class="copyright">
      © 2010-2017 <a href="/">天行VPN</a> All Rights Reserved.
  </div>
</footer>

{$footeroutput}
{if $adminMasqueradingAsClient}
  <li>
    <!-- Return to admin link -->
    <div class="alert alert-danger admin-masquerade-notice">
        {$LANG.adminmasqueradingasclient}<br />
        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="alert-link">{$LANG.logoutandreturntoadminarea}</a>
    </div>
  </li>
{elseif $adminLoggedIn}
  <!-- Return to admin link -->
  <div class="alert alert-danger admin-masquerade-notice">
      {$LANG.adminloggedin}<br />
      <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="alert-link">{$LANG.returntoadminarea}</a>
  </div>
{/if}

</body>
</html>
