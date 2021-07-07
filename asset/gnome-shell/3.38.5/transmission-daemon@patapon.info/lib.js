/**
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
**/

const Gio = imports.gi.Gio;
const GLib = imports.gi.GLib;
const Gettext = imports.gettext;

function getSettings(extension) {
    let schemaName = 'org.gnome.shell.extensions.transmission-daemon';
    let schemaDir = extension.dir.get_child('schemas').get_path();

    if (GLib.file_test(schemaDir + '/gschemas.compiled', GLib.FileTest.EXISTS)) {
        // extension installed in .local
        let schemaSource = Gio.SettingsSchemaSource.new_from_directory(
            schemaDir, Gio.SettingsSchemaSource.get_default(), false);
        let schema = schemaSource.lookup(schemaName, false);

        return new Gio.Settings({ settings_schema: schema, });
    } else {
        // extension installed system-wide
        if (Gio.Settings.list_schemas().indexOf(schemaName) === -1) {
            throw 'Schema "%s" not found.'.format(schemaName);
        }

        return new Gio.Settings({ schema: schemaName, });
    }
}

function initTranslations(extension) {
    let localeDir = extension.dir.get_child('locale').get_path();

    if (GLib.file_test(localeDir, GLib.FileTest.EXISTS)) {
        // extension installed in .local
        Gettext.bindtextdomain('gnome-shell-extension-transmission-daemon', localeDir);
    } else {
        // extension installed system-wide
        Gettext.bindtextdomain('gnome-shell-extension-transmission-daemon', extension.metadata.locale);
    }
}
