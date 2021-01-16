const TOKEN_NAME = "COULD-TOKEN"

export function getToken() {
    return localStorage.getItem(TOKEN_NAME).toString()
}

export function setToken(value) {
    return localStorage.setItem(TOKEN_NAME, value)
}

export function removeToken() {
    return localStorage.removeItem(TOKEN_NAME)
}