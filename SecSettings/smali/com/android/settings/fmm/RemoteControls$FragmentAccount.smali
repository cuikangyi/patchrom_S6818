.class public Lcom/android/settings/fmm/RemoteControls$FragmentAccount;
.super Landroid/preference/PreferenceFragment;
.source "RemoteControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fmm/RemoteControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentAccount"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 3

    .prologue
    .line 278
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 280
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 281
    .local v1, root:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 284
    :cond_0
    const v2, 0x7f07002e

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 285
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 287
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 288
    .local v0, AccountRegist:Landroid/preference/PreferenceCategory;
    const v2, 0x7f090947

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 289
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 290
    return-void
.end method
