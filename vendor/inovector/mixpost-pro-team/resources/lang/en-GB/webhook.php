<?php

return [
  'edit_webhook' => 'Edit Webbook',
  'callback_url' => 'Callback URL',
  'method' => 'Method',
  'max_attempts' => 'Max attempts',
  'secret' => 'Secret',
  'events' => 'Events',
  'webhooks' => 'Webhooks',
  'create_webhook' => 'Create webhook',
  'deliveries' => 'Webhook deliveries',
  'never_triggered' => 'Never triggered',
  'last_delivery_succeeded' => 'The last delivery was successful.',
  'last_delivery_failed' => 'Last delivery failed.',
  'delete_webhook' => 'Delete webhook',
  'delete_webhook_confirm' => 'Are you sure you want to delete this webhook?',
  'webhooks_desc' => 'Allow external services to be notified when certain events happen.',
  'event' => 
  [
    'post' => 
    [
      'created' => 'Post Created',
      'updated' => 'Post Updated',
      'deleted' => 'Post Deleted',
      'scheduled' => 'Post Scheduled',
      'published' => 'Post Published',
      'publishing_failed' => 'Publishing Post Failed',
    ],
    'account' => 
    [
      'added' => 'Account Added',
      'updated' => 'Account Updated',
      'deleted' => 'Account Deleted',
    ],
  ],
  'change_secret' => 'Change secret',
  'change_secret_desc' => ' If you lose or forget this secret, you can change it, but remember to update any integrations using it.',
  'secret_updated' => 'Secret successfully updated',
  'delete_webhooks' => 'Delete webhooks',
  'delete_webhooks_confirm' => 'Are you sure you want to delete selected webhooks?',
  'resend' => 'Resend',
  'next_retry' => 'Next retry',
  'resend_manually' => 'This webhook was resent manually',
  'response' => 'Response',
  'http_status' => 'HTTP Status code',
  'payload' => 'Payload',
  'resent' => 'Webhook has been resent',
  'updated' => 'Webhook updated successfully',
  'not_found' => 'Webhook not found',
  'deleted' => 'Webhook deleted successfully',
  'created' => 'Webhook created successfully',
  'delete_webhooks_failed' => 'Webhooks could not be deleted',
  'delete_webhooks_success' => 'Webhooks deleted successfully',
  'delivery_failed_try_redeliver' => 'Delivery of this webhook failed. The system will try to redeliver the event later.',
  'delivery_failed' => 'Delivery of this webhook failed.',
  'content_type' => 'Content-Type',
];