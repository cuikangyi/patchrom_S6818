.class public Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApAllowedListDelete.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActionView:Landroid/view/View;

.field private mDeviceList:Landroid/preference/PreferenceScreen;

.field private mIsMdpiOrLdpi:Z

.field private mIsPrefClick:Z

.field private mIsTablet:Z

.field private mMenuItemOk:Landroid/view/MenuItem;

.field private mOkTextView:Landroid/widget/TextView;

.field private mRemoveButton:Landroid/view/View;

.field private mSelectAll:Landroid/preference/CheckBoxPreference;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private okDisableOpacity:F

.field private okEnableOpacity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    .line 73
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okEnableOpacity:F

    .line 74
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okDisableOpacity:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->removeSelectedList()V

    return-void
.end method

.method private isAllDeviceChecked()Z
    .locals 2

    .prologue
    .line 280
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    const/4 v1, 0x0

    .line 284
    :goto_1
    return v1

    .line 280
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private reloadWhiteList()V
    .locals 4

    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 246
    .local v1, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 247
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 248
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 250
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 252
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private removeSelectedList()V
    .locals 8

    .prologue
    .line 222
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 223
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 225
    .local v0, b:Landroid/os/Bundle;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 226
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 227
    .local v3, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 228
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    .line 229
    .local v4, wl:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v3}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 231
    .local v5, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 232
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 233
    const/4 v6, 0x4

    iput v6, v2, Landroid/os/Message;->what:I

    .line 234
    const-string v6, "mac"

    invoke-virtual {v3}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    if-eqz v5, :cond_0

    .line 237
    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 225
    .end local v4           #wl:Landroid/net/wifi/WifiApWhiteList;
    .end local v5           #wm:Landroid/net/wifi/WifiManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v3           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->reloadWhiteList()V

    .line 242
    return-void
.end method

.method private updateList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 288
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 293
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 295
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 296
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okEnableOpacity:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 310
    :cond_1
    return-void

    .line 300
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    if-eqz v1, :cond_3

    .line 301
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 303
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v1, :cond_4

    .line 304
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 305
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 306
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okDisableOpacity:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 288
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 2
    .parameter "showIcon"

    .prologue
    const/4 v1, 0x0

    .line 193
    if-eqz p1, :cond_1

    .line 194
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsMdpiOrLdpi:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 205
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 87
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 89
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    .line 91
    const-string v9, "WifiApSettings"

    const-string v10, "WifiApAllowedListDelete onActivityCreated"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v9, :cond_0

    .line 93
    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-virtual {v0, v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 95
    :cond_0
    iget-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v9, :cond_1

    .line 99
    :cond_1
    const-string v9, "device_list_category"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    .line 101
    iget-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-eqz v9, :cond_2

    .line 102
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 134
    :goto_0
    new-instance v9, Landroid/preference/CheckBoxPreference;

    invoke-direct {v9, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    .line 135
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0400f5

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 136
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0907e9

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 137
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 138
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v7

    .line 141
    .local v7, whiteList:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v7}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v6

    .line 142
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    if-eqz v6, :cond_3

    .line 143
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 144
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 145
    .local v8, wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    invoke-direct {v3, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;-><init>(Landroid/content/Context;)V

    .line 146
    .local v3, dev:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v8}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {v8}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->setSummary(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 104
    .end local v3           #dev:Landroid/preference/CheckBoxPreference;
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .end local v7           #whiteList:Landroid/net/wifi/WifiApWhiteList;
    .end local v8           #wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :cond_2
    const-string v9, "layout_inflater"

    invoke-virtual {v1, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 105
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f04013f

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    .line 106
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v10, 0x7f0b03e7

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    .line 107
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    const v10, 0x7f0b03e8

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    .line 108
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    const v10, 0x7f090302

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okDisableOpacity:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 110
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 111
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$1;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v10, 0x7f0b03e5

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 120
    .local v2, cancelButton:Landroid/view/View;
    new-instance v9, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$2;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const/16 v9, 0x10

    const/16 v10, 0x10

    invoke-virtual {v0, v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 128
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x15

    invoke-direct {v10, v11, v12, v13}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v9, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto/16 :goto_0

    .line 154
    .end local v2           #cancelButton:Landroid/view/View;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .restart local v6       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .restart local v7       #whiteList:Landroid/net/wifi/WifiApWhiteList;
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v4, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 155
    .local v4, dpi:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_5

    const/16 v9, 0xa0

    if-eq v4, v9, :cond_4

    const/16 v9, 0x78

    if-ne v4, v9, :cond_5

    .line 157
    :cond_4
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsMdpiOrLdpi:Z

    .line 160
    :cond_5
    iget-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v9, :cond_6

    .line 161
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    const/4 v9, 0x1

    :goto_2
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateOptionsMenuIcon(Z)V

    .line 163
    :cond_6
    return-void

    .line 161
    :cond_7
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 186
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateOptionsMenuIcon(Z)V

    .line 187
    :cond_0
    const-string v0, "WifiApSettings"

    const-string v1, "updateList due to onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateList()V

    .line 189
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    return-void

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 80
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 167
    const/4 v1, 0x1

    const v2, 0x7f090134

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02008b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 171
    const/4 v1, 0x2

    const v2, 0x7f090302

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    .line 172
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    const v2, 0x7f02008c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 173
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 175
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 181
    :cond_0
    return-void

    .line 175
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 209
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 218
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 211
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 214
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->removeSelectedList()V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "checked"

    .prologue
    const/4 v4, 0x1

    .line 261
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    if-eqz v2, :cond_0

    .line 276
    .end local p1
    .end local p2
    :goto_0
    return v4

    .line 263
    .restart local p1
    .restart local p2
    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    .line 264
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 265
    .local v1, isChecked:Z
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_1

    .line 266
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 267
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 270
    .end local v0           #i:I
    :cond_1
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 271
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->isAllDeviceChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 273
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    .line 275
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateList()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 257
    return-void
.end method
