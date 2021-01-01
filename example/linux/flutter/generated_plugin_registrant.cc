//
//  Generated file. Do not edit.
//

#include "generated_plugin_registrant.h"

#include <blake3/blake3_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) blake3_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "Blake3Plugin");
  blake3_plugin_register_with_registrar(blake3_registrar);
}
