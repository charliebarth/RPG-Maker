const URL = 'http://localhost:3000/'

const headers = { 'Content-Type': 'application/json', 'Accepts': 'application/json' }
const authHeaders = { Authorization: `Bearer ${getToken()}` }
const fullHeaders = { 'Content-Type': 'application/json', 'Accepts': 'application/json' }

const parseJSON = res => res.json()

export const postUser = user => {
    return fetch(URL + 'users', {
      method: "POST",
      headers,
      body: JSON.stringify(user),
    })
    .then(parseJSON)
}

const multiFetch = path => {
    return fetch(URL + path, {
      headers: authHeaders
    })
    .then(parseJSON)
}

export const fetchUsers = () => multiFetch(`users/`)