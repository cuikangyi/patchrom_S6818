.class public Lcom/android/settings/motion2013/AirScrollAdvancedSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AirScrollAdvancedSettings.java"


# instance fields
.field private mAlbumAndPhoto:Landroid/preference/CheckBoxPreference;

.field private mAllList:Landroid/preference/CheckBoxPreference;

.field private mEmailBody:Landroid/preference/CheckBoxPreference;

.field private mGuideText:Landroid/preference/Preference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mWebPage:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 43
    const-string v0, "guide_text"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mGuideText:Landroid/preference/Preference;

    .line 44
    iget-object v0, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mGuideText:Landroid/preference/Preference;

    const v1, 0x7f04000a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 45
    const-string v0, "all_list"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mAllList:Landroid/preference/CheckBoxPreference;

    .line 46
    const-string v0, "web_page"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mWebPage:Landroid/preference/CheckBoxPreference;

    .line 47
    const-string v0, "album_and_photo"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mAlbumAndPhoto:Landroid/preference/CheckBoxPreference;

    .line 48
    const-string v0, "email_body"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mEmailBody:Landroid/preference/CheckBoxPreference;

    .line 49
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 65
    iget-object v2, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mAllList:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_scroll_all_list"

    iget-object v4, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mAllList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    :goto_0
    return v1

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mWebPage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_scroll_web_page"

    iget-object v4, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mWebPage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 71
    :cond_3
    iget-object v2, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mAlbumAndPhoto:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_scroll_album_and_photo"

    iget-object v4, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mAlbumAndPhoto:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 74
    :cond_5
    iget-object v2, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mEmailBody:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_scroll_email_body"

    iget-object v4, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 79
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    .line 57
    iget-object v3, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mAllList:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_scroll_all_list"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 58
    iget-object v3, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mWebPage:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_scroll_web_page"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 59
    iget-object v3, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mAlbumAndPhoto:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_scroll_album_and_photo"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mEmailBody:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_scroll_email_body"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 61
    return-void

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0

    :cond_1
    move v0, v2

    .line 58
    goto :goto_1

    :cond_2
    move v0, v2

    .line 59
    goto :goto_2

    :cond_3
    move v1, v2

    .line 60
    goto :goto_3
.end method
