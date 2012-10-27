a = User.create name: 'Alice'
b = User.create name: 'Bob'
Profile.create name: 'profile 1', user_id: a._id
Profile.create name: 'profile 2', user_id: a._id
Profile.create name: 'profile 3', user_id: b._id
Profile.create name: 'profile 4', user_id: b._id
