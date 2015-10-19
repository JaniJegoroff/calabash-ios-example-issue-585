all:
	$(MAKE) ipa
	$(MAKE) app

clean:
	rm -rf build
	rm -rf Products
	rm -rf xtc-submit

# Builds an ipa from the LPSimpleExample target.
#
# This ipa links the calabash.framework at during the build.
#
# This kind of build is suitable for the Xamarin Test Cloud.
ipa:
	bin/make/ipa.sh

# Builds an app from the LPSimpleExample target.
#
# This app links the calabash.framework during the build.
app:
	bin/make/app.sh

