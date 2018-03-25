import Cookies from 'js-cookie'

const TokenKey = 'Admin-Token'

const Navkey = 'Admin-Navkey'
export function getToken() {
  return Cookies.get(TokenKey)
}

export function setToken(token) {
  return Cookies.set(TokenKey, token)
}

export function removeToken() {
  return Cookies.remove(TokenKey)
}


export function setNavkey(navkey) {
  return Cookies.set(Navkey, navkey)
}

export function getNavkey() {
  return Cookies.get(Navkey)
}

export function removeNavkey() {
  return Cookies.remove(Navkey)
}
