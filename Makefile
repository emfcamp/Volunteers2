
ifeq ("$(SETTINGS)", "")
	ifeq ("$(wildcard settings.live)", "")
		SETTINGS=settings.dev
	else
		SETTINGS=settings.live
	endif
endif

.PHONY: run update

run:
	DJANGO_SETTINGS_MODULE=$(SETTINGS) pipenv run python manage.py runserver 0:5050

update:
	PIPENV_MAX_SUBPROCESS=$$(($$(nproc)+1)) pipenv sync --dev

deploy:
	PIPENV_MAX_SUBPROCESS=$$(($$(nproc)+1)) pipenv install --deploy

lock:
	pipenv lock

manage:
	DJANGO_SETTINGS_MODULE=$(SETTINGS) pipenv run python manage.py
