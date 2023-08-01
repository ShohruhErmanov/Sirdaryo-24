<div class="main-sidebar sidebar-style-2">
    <aside id="sidebar-wrapper">
      <div class="sidebar-brand">
        <a href=""> <img alt="image" src="/admin/assets/img/sirdaryo24.svg" class="header-logo" /> <span
            class="logo-name">Sirdaryo 24</span>
        </a>
      </div>
      <ul class="sidebar-menu">
        <li class="menu-header">Main</li>
        {{-- <li class="dropdown">
          <a href="" class="nav-link"><i data-feather="monitor"></i><span>Dashboard</span></a>
        </li> --}}
        <li class="dropdown">
          <a href="{{ route('admin.categories.index') }}" class="menu-toggle"><i class="fas fa-ellipsis-h"></i><span>Categories</span></a>

        </li>

        <li class="dropdown">
            <a href="{{ route('admin.posts.index') }}" class="menu-toggle"><i class="far fa-clipboard"></i><span>Posts</span></a>

          </li>


        <li class="dropdown">
            <a href="{{ route('admin.tags.index') }}" class="menu-toggle"><i class="far fa-clipboard"></i><span>Tags</span></a>

          </li>

      </ul>
    </aside>
  </div>

