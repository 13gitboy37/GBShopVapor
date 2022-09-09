//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 09.09.2022.
//

import Vapor

struct PayBasketResponse: Content {
    var amount: Int
    var count_goods: Int
    var contents: [Good]
}


/*
 "{
   "amount": 46600,
   "countGoods": 2,
   "contents": [
     {
       "id_product": 123,
       "product_name": "Ноутбук",
       "price": 45600,
       "quantity": 1
     },
     {
       "id_product": 456,
       "product_name": "Мышка",
       "price": 1000,
       "quantity": 1
     }
   ]
 }"
 */
