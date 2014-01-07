<?php

/**
 * Delete all unconfirmed UserAngelTypes for given Angeltype.
 * 
 * @param int $angeltype_id
 */
function UserAngelTypes_delete_all($angeltype_id) {
  return sql_query("
      DELETE FROM `UserAngelTypes`
      WHERE `angeltype_id`=" . sql_escape($angeltype_id) . "
      AND `confirm_user_id` IS NULL");
}

/**
 * Confirm all unconfirmed UserAngelTypes for given Angeltype.
 *
 * @param int $angeltype_id          
 * @param User $confirm_user          
 */
function UserAngelTypes_confirm_all($angeltype_id, $confirm_user) {
  return sql_query("
      UPDATE `UserAngelTypes`
      SET `confirm_user_id`=" . sql_escape($confirm_user['UID']) . "
      WHERE `angeltype_id`=" . sql_escape($angeltype_id) . "
      AND `confirm_user_id` IS NULL");
}

/**
 * Confirm an UserAngelType with confirming user.
 *
 * @param int $user_angeltype_id          
 * @param User $confirm_user          
 */
function UserAngelType_confirm($user_angeltype_id, $confirm_user) {
  return sql_query("
      UPDATE `UserAngelTypes`
      SET `confirm_user_id`=" . sql_escape($confirm_user['UID']) . "
      WHERE `id`=" . sql_escape($user_angeltype_id) . "
      LIMIT 1");
}

/**
 * Delete an UserAngelType.
 *
 * @param UserAngelType $user_angeltype          
 */
function UserAngelType_delete($user_angeltype) {
  return sql_query("
      DELETE FROM `UserAngelTypes` 
      WHERE `id`=" . sql_escape($user_angeltype['id']) . " 
      LIMIT 1");
}

/**
 * Create an UserAngelType.
 *
 * @param User $user          
 * @param Angeltype $angeltype          
 */
function UserAngelType_create($user, $angeltype) {
  $result = sql_query("
    INSERT INTO `UserAngelTypes` SET
    `user_id`=" . sql_escape($user['UID']) . ",
    `angeltype_id`=" . sql_escape($angeltype['id']));
  if ($result === false)
    return false;
  return sql_id();
}

/**
 * Get an UserAngelType by its id.
 *
 * @param int $user_angeltype_id          
 */
function UserAngelType($user_angeltype_id) {
  $angeltype = sql_select("
      SELECT *
      FROM `UserAngelTypes`
      WHERE `id`=" . sql_escape($user_angeltype_id) . "
      LIMIT 1");
  if ($angeltype === false)
    return false;
  if (count($angeltype) == 0)
    return null;
  return $angeltype[0];
}

/**
 * Get an UserAngelType by user and angeltype.
 *
 * @param User $user          
 * @param Angeltype $angeltype          
 */
function UserAngelType_by_User_and_AngelType($user, $angeltype) {
  $angeltype = sql_select("
      SELECT * 
      FROM `UserAngelTypes` 
      WHERE `user_id`=" . sql_escape($user['UID']) . " 
      AND `angeltype_id`=" . sql_escape($angeltype['id']) . "
      LIMIT 1");
  if ($angeltype === false)
    return false;
  if (count($angeltype) == 0)
    return null;
  return $angeltype[0];
}
?>