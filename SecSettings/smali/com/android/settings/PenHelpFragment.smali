.class public Lcom/android/settings/PenHelpFragment;
.super Landroid/app/Fragment;
.source "PenHelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PenHelpFragment$PenHelpItem;
    }
.end annotation


# instance fields
.field private mPenHelpType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 201
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 53
    const-string v2, "pen_help_menu"

    const-string v3, "hovering"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 59
    const-string v2, "hovering"

    iput-object v2, p0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    .line 62
    :cond_0
    const-string v2, "PenHelpFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPenHelpType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 55
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "pen_help_menu"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 22
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 69
    const/16 v17, 0x0

    .line 70
    .local v17, view:Landroid/view/View;
    const-string v20, "hovering"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 71
    const v20, 0x7f0400a7

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 72
    const v20, 0x7f0b01d1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 73
    .local v7, hoveringButton:Landroid/widget/Button;
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->setHoverPopupType(I)V

    .line 74
    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    const/16 v21, 0x5051

    invoke-virtual/range {v20 .. v21}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 75
    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    const v21, 0x7f090a4e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 77
    const v20, 0x7f0b01d0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 80
    .local v6, helpContent:Landroid/widget/LinearLayout;
    new-instance v14, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 81
    .local v14, pointer_1:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a4f

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 82
    const v20, 0x7f090a50

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 83
    const v20, 0x7f0200da

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 84
    invoke-virtual {v14}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    new-instance v15, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 86
    .local v15, pointer_2:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a51

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 87
    const v20, 0x7f0200db

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 88
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleVisibility(I)V

    .line 89
    invoke-virtual {v15}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    new-instance v9, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 93
    .local v9, infoPreview:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a52

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 94
    const v20, 0x7f090a53

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 95
    const v20, 0x7f020298

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 96
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->usePlayButton(Z)V

    .line 97
    invoke-virtual {v9}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    new-instance v19, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 101
    .local v19, zoomIn:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a54

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 102
    const v20, 0x7f090a55

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 103
    const v20, 0x7f020299

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 104
    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->usePlayButton(Z)V

    .line 105
    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    new-instance v8, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v8, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 109
    .local v8, iconLabel:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a56

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 110
    const v20, 0x7f090a57

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 111
    const v20, 0x7f0200e0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 112
    invoke-virtual {v8}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    new-instance v10, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 116
    .local v10, listScroll:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a58

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 117
    const v20, 0x7f090a59

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 118
    const v20, 0x7f0200e1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 119
    invoke-virtual {v10}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 198
    .end local v6           #helpContent:Landroid/widget/LinearLayout;
    .end local v7           #hoveringButton:Landroid/widget/Button;
    .end local v8           #iconLabel:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v9           #infoPreview:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v10           #listScroll:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v14           #pointer_1:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v15           #pointer_2:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v19           #zoomIn:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    :cond_0
    :goto_0
    return-object v17

    .line 120
    :cond_1
    const-string v20, "gesture"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 121
    const v20, 0x7f0400a6

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 122
    const v20, 0x7f0b01d0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 125
    .restart local v6       #helpContent:Landroid/widget/LinearLayout;
    new-instance v5, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 126
    .local v5, goBack:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a5c

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 127
    const v20, 0x7f090a5d

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 128
    const v20, 0x7f0200cd

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 129
    invoke-virtual {v5}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    new-instance v11, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 133
    .local v11, openMenu:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a5e

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 134
    const v20, 0x7f090a5f

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 135
    const v20, 0x7f0200ce

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 136
    invoke-virtual {v11}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 139
    new-instance v12, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 140
    .local v12, openPopNote:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a60

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 141
    const v20, 0x7f090a61

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 142
    const v20, 0x7f0200cf

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 143
    invoke-virtual {v12}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    new-instance v13, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 147
    .local v13, openQuickCommand:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a62

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 148
    const v20, 0x7f090a63

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 149
    const v20, 0x7f0200d0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 150
    invoke-virtual {v13}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 153
    new-instance v3, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 154
    .local v3, captureScreen:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a64

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 155
    const v20, 0x7f090a65

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 156
    const v20, 0x7f0200d1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 157
    invoke-virtual {v3}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    new-instance v4, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 161
    .local v4, cutOutImage:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a66

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 162
    const v20, 0x7f090a67

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 163
    const v20, 0x7f020296

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 164
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->usePlayButton(Z)V

    .line 165
    invoke-virtual {v4}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    new-instance v16, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 169
    .local v16, seleteText:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a68

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 170
    const v20, 0x7f090a69

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 171
    const v20, 0x7f020297

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 172
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->usePlayButton(Z)V

    .line 173
    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 174
    .end local v3           #captureScreen:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v4           #cutOutImage:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v5           #goBack:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v6           #helpContent:Landroid/widget/LinearLayout;
    .end local v11           #openMenu:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v12           #openPopNote:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v13           #openQuickCommand:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    .end local v16           #seleteText:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    :cond_2
    const-string v20, "quickcommand"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 175
    const v20, 0x7f0400aa

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 176
    const v20, 0x7f0b01d0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 179
    .restart local v6       #helpContent:Landroid/widget/LinearLayout;
    new-instance v13, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 180
    .restart local v13       #openQuickCommand:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a6b

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 181
    const v20, 0x7f090a6c

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 183
    const v20, 0x7f02028f

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 187
    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->usePlayButton(Z)V

    .line 188
    invoke-virtual {v13}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 191
    new-instance v18, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    .line 192
    .local v18, writeCommand:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    const v20, 0x7f090a6d

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    .line 193
    const v20, 0x7f090a6e

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    .line 194
    const v20, 0x7f0200bb

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    .line 195
    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 185
    .end local v18           #writeCommand:Lcom/android/settings/PenHelpFragment$PenHelpItem;
    :cond_3
    const v20, 0x7f020290

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    goto :goto_1
.end method
