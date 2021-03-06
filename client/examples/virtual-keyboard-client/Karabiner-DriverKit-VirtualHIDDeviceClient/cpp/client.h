#pragma once

#ifdef __cplusplus
extern "C" {
#endif

void shared_virtual_hid_keyboard_client_initialize(void);
void shared_virtual_hid_keyboard_client_terminate(void);
int shared_virtual_hid_keyboard_client_connected(void);

void shared_virtual_hid_keyboard_initialize(void);
void shared_virtual_hid_keyboard_terminate(void);
void shared_virtual_hid_keyboard_post_control_up(void);
void shared_virtual_hid_keyboard_post_launchpad(void);
void shared_virtual_hid_keyboard_reset(void);

void shared_virtual_hid_pointing_initialize(void);
void shared_virtual_hid_pointing_terminate(void);
void shared_virtual_hid_pointing_post_example_report(void);
void shared_virtual_hid_pointing_reset(void);

#ifdef __cplusplus
}
#endif
