const getters = {
  sidebar: state => state.app.sidebar,
  token: state => state.user.token,
  avatar: state => state.user.avatar,
  name: state => state.user.name,
  roles: state => state.user.roles,
  menus:state => state.user.menus,
  navmenus:state => state.user.navmenus,
  navkey:state => state.user.navkey,
}
export default getters
