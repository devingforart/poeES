# Official Spanish Localisation

This repository now supports loading official Path of Exile Spanish text for game content without replacing PoB's internal English identifiers.

## What is localised

The official Spanish pipeline currently supports:

* stat descriptions from `Metadata/StatDescriptions/*.txt`
* skill names and descriptions
* gem names, base type names, secondary effect names, and tag strings

These are loaded as display-only overlays. Internal keys stay in English so build import, matching, and other game logic keep working.

## Runtime behaviour

At runtime, PoB:

* keeps `name` and other internal identifiers in English
* prefers `displayName`, `displayDescription`, `displayBaseTypeName`, and `displayTagString` when the selected UI language is Spanish
* falls back to English automatically if no Spanish overlay exists

## Generated files

Official Spanish game content is expected in:

* `src/Data/Locales/es/Skills.lua`
* `src/Data/Locales/es/Gems.lua`

The stat description files remain in `src/Data/StatDescriptions/`, but now preserve all language blocks exported from the client so runtime can select Spanish descriptions directly.

## Exporting official Spanish from the PoE client

You need access to an official Path of Exile installation and the normal PoB export setup described in `CONTRIBUTING.md`.

Before launching the exporter, set:

```bash
POB_EXPORT_LOCALE=es
```

Optional:

```bash
POB_ONLY_LOCALE_EXPORT=1
```

`POB_ONLY_LOCALE_EXPORT=1` skips rewriting the main generated `Skills` and `Gems` files and only writes locale overlays.

### Export steps

1. Launch the exporter using `src/Export/Launch.lua`.
2. Open a valid Path of Exile data source.
3. Run `statdesc`.
4. Run `skills`.

After that you should have:

* `src/Data/Locales/es/Skills.lua`
* `src/Data/Locales/es/Gems.lua`
* refreshed `src/Data/StatDescriptions/*.lua` with preserved `lang` blocks

## Important limitation

This does not yet fully localise every PoB-specific UI string or every internal game-facing text source such as item base names and uniques. Those areas need separate work because many PoB systems still key off English names internally.
