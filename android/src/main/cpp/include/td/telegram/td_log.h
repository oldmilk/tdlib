
#pragma once


#include "tdjson_export.h"

#ifdef __cplusplus
extern "C" {
#endif

/**
 * Sets the path to the file where the internal TDLib log will be written.
 * By default TDLib writes logs to stderr or an OS specific log.
 * Use this method to write the log to a file instead.
 *
 * \param[in]  file_path Null-terminated path to a file where the internal TDLib log will be written.
 *                       Use an empty path to switch back to the default logging behaviour.
 * \return True 1 on success, or 0 otherwise, i.e. if the file can't be opened for writing.
 */
TDJSON_EXPORT int td_set_log_file_path(const char *file_path);

/**
 * Sets maximum size of the file to where the internal TDLib log is written before the file will be auto-rotated.
 * Unused if log is not written to a file. Defaults to 10 MB.
 *
 * \param[in]  max_file_size Maximum size of the file to where the internal TDLib log is written before the file
 *                           will be auto-rotated. Should be positive.
 */
TDJSON_EXPORT void td_set_log_max_file_size(long long max_file_size);

/**
 * Sets the verbosity level of the internal logging of TDLib.
 * By default the TDLib uses a log verbosity level of 5.
 *
 * \param[in]  new_verbosity_level New value of logging verbosity level.
 *                                 Value 0 corresponds to fatal errors,
 *                                 value 1 corresponds to errors,
 *                                 value 2 corresponds to warnings and debug warnings,
 *                                 value 3 corresponds to informational,
 *                                 value 4 corresponds to debug,
 *                                 value 5 corresponds to verbose debug,
 *                                 value greater than 5 and up to 1024 can be used to enable even more logging.
 */
TDJSON_EXPORT void td_set_log_verbosity_level(int new_verbosity_level);

/**
 * A type of callback function that will be called when a fatal error happens.
 *
 * \param error_message Null-terminated string with a description of a happened fatal error.
 */
typedef void (*td_log_fatal_error_callback_ptr)(const char *error_message);

/**
 * Sets the callback that will be called when a fatal error happens.
 * None of the TDLib methods can be called from the callback.
 * The TDLib will crash as soon as callback returns.
 * By default the callback is not set.
 *
 * \param[in]  callback Callback that will be called when a fatal error happens.
 *                      Pass NULL to remove the callback.
 */
TDJSON_EXPORT void td_set_log_fatal_error_callback(td_log_fatal_error_callback_ptr callback);

#ifdef __cplusplus
}  // extern "C"
#endif
