if(typeof process === 'undefined')
{
	/* When importing to GJS */
	var exports = {};
	var module = {exports};
}

var tempDir = '/tmp/.cast-to-tv';

module.exports = {
	tempDir: tempDir,
	hlsDir: tempDir + '/stream',
	vttSubsPath: tempDir + '/webplayer_subs.vtt',
	coverDefault: tempDir + '/cover',
	escapeChars: [' ', '[', ']', '"', "'"],
	coverNames: ['cover', 'cover_01', 'cover 01', 'cover1'],
	coverExtensions: ['.jpg', '.png'],
	subsFormats: ['srt', 'ass', 'vtt'],
	chromecast: {
		videoBuffer: 2500,
		visualizerBuffer: 6500,
		subsStyle: {
			backgroundColor: '#00000000',
			foregroundColor: '#FFFFFFFF',
			edgeType: 'OUTLINE',
			edgeColor: '#000000FF',
			fontScale: '1.0',
			fontStyle: 'NORMAL',
			fontFamily: 'Droid Sans',
			fontGenericFamily: 'SANS_SERIF',
			windowType: 'NONE'
		},
		tracks: [{
			trackId: 1,
			type: 'TEXT',
			trackContentType: 'text/vtt',
			name: 'Subtitles',
			subtype: 'SUBTITLES'
		}]
	}
};
