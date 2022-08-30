import * as functions from "firebase-functions";
import * as admin from "firebase-admin";
admin.initializeApp(functions.config().firebase);
export const firestore = admin.firestore();

export const addPaymentLog = functions.https.onRequest(async (req, res) => {
  const event = req.body;

  const ref = firestore.collection("payment").doc();
  const obj: any = event.data.object;
  await ref.set({
    uid: event.id,
    type: event.type,
    amount: obj.amount_total,
    name: obj.customer_details.name,
    email: obj.customer_details.email,
    used: true,
    createdAt: admin.firestore.FieldValue.serverTimestamp,
    updatedAt: admin.firestore.FieldValue.serverTimestamp,
  });

  res.end();
});
