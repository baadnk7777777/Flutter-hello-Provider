1เพื่อให้ง่ายในการจัดการจะแบ่งส่วนต่างๆเป็น MVC

Models (เก็บในส่วนของ model ที่ใช้ในการจัดการ response)
Views (เป็นส่วนของ UI)
Controllers (เป็นส่วนของ State และ Logic โดยในส่วนนี้จะมีทั้งส่วนที่เราจะ observ และ Method ต่างๆ)

2. เราสามารถใช้ Stateless กับทุกๆหน้าที่มี State ต่างๆได้เลย

3. เมื่อมีการกดปุ่ม Add to Cart จะทำให้ไปเรียก addToCart()ใน controller เพื่อ add ค่าเข้าไปใน List ของ Product
จากนั้นใน controller ก็จะมีการคืนค่าออกไปทันที เพราะได้ observe ไว้อยู่แล้วที่ cartItems

4. เมื่อมีการคืนค่าออกมาจาก Controller ส่วนไหนใน UI ที่มี GetX ครอบไว้อยู่ก็จะได้รับการ update UI ทันที
