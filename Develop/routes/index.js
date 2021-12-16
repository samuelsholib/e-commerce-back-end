const router = require('express').Router();
const catagoryRoute = require('./api/category-routes');
const productRoute = require('./api/product-routes');
const tagRoute = require('./api/tag-routes');


router.use('/categories', catagoryRoute);
router.use('/products', productRoute);
router.use('/tags', tagRoute);

router.use((req, res) => {
    res.send("<h1>Wrong Route!</h1>")
});

module.exports = router;