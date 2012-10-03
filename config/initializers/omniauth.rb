Rails.application.config.middleware.use OmniAuth::Builder do
   provider :facebook,"526309830715742","6c296324d8544a4fbc2114f0a75d31fe"
   provider :twitter,"ZrIZdY0YZNHUiuDhCRWgVA","7PsVO6530NeQ3WUNxp0oUTC0vf9GcojYxEuzc76Jc"
   # Note: access_type can be 'online' (for just authenticating) or 'offline' (for using services)
   # approval_prompt should be a blank string or else it defaults to 'force', which requires re-authenticating on each login/usage
   provider :google_oauth2, "757075733479.apps.googleusercontent.com", "IYtsUP2xrU85GXkdhVod6c7M", {:access_type => 'online', :approval_prompt => ''}
end
