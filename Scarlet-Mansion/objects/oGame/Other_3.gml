

#region Deactivate DS Lists

ds_list_destroy(oPlayerWeapon.hitObjects);

#endregion


#region Delete Buffers

buffer_delete(oPlayerController.bufferSpearDamage);
buffer_delete(oPlayerController.bufferSpearPosition);

#endregion
