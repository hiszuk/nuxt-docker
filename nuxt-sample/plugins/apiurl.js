export default (context) => {
  context.app.$axios.defaults.baseURL = context.app.$env.API_URL
}
