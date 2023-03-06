export default ({ filter, action }) => {
	filter('items.create', (...params) => {
		console.log('Creating Item!');
	});

	action('items.create', async (trigger, { database }) => {
		if (trigger.collection === 'purchases') {
			const { amounts } = trigger.payload;
			const productsIds = trigger.payload.products.create.map(i => i.products_id.id);
			const amountsData = amounts.split(/\n/g);
			const products = await database.select().from('products').whereIn('id', productsIds);

			let x = 0;
			for (let id of productsIds) {
				const product = products.find(i => i.id == id);
				const amount = amountsData[x];
				product.amount += parseInt(amount);
				await database('products').where('id', product.id).update({ amount: product.amount });
				x++;
			}
		}
	});
};
