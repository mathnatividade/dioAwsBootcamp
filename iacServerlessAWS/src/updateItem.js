"use strict";

const AWS= required("aws-sdk");

const updateItem = async (event) => {

    const {itemStatus} = JSON.parse(event.body);
    const {id} = event.pathParameters

    const dynamodb = new AWS.DynamoDB.DocumentClient();

    await dynamoDB.update({
        TableName: "ItemTableNew",
        Key: {id},
        UpdateExpression: 'set itemStatus = :itemStatus',
        ExpressionAttributeValues: {
            ':itemStatus': itemStatus
        },
        ReturnValeus: "ALL_NEW"
    }).ptomise()

    return {
        statusCode: 200,
        body: JSON.stringify(
            { msg: 'Item updated'}
        ),
    };
}

module.exports = {
    handler: updateItem,
}

