/*******************************************************************************
 * Copyright (c) 2016. Mike Amato, All Rights Reserved.
 ******************************************************************************/

if (process.env.NODE_ENV === 'production') {
  module.exports = require('./configureStore.prod')
} else {
  module.exports = require('./configureStore.dev')
}
