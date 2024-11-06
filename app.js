const express = require('express');
const mongoose = require('mongoose');
const app = express();

mongoose.connect('mongodb://db:27017/products_db', { useNewUrlParser: true, useUnifiedTopology: true });

const productSchema = new mongoose.Schema({
  name: String,
  price: Number
});

const Product = mongoose.model('Product', productSchema);

app.post('/addProduct', async (req, res) => {
  const product = new Product(req.body);
  await product.save();
  res.send({ message: 'Product added successfully' });
});

app.listen(3000, () => console.log('Product service running'));
