.class Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;
.super Ljava/lang/Object;
.source "ParentControlLockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private mEight:Landroid/widget/ImageButton;

.field private mFive:Landroid/widget/ImageButton;

.field private mFour:Landroid/widget/ImageButton;

.field private mNine:Landroid/widget/ImageButton;

.field private mOkButton:Landroid/widget/ImageButton;

.field private mOne:Landroid/widget/ImageButton;

.field private mSeven:Landroid/widget/ImageButton;

.field private mSix:Landroid/widget/ImageButton;

.field private mThree:Landroid/widget/ImageButton;

.field private mTwo:Landroid/widget/ImageButton;

.field private mZero:Landroid/widget/ImageButton;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)V
    .locals 1

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    const v0, 0x1020378

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mZero:Landroid/widget/ImageButton;

    .line 422
    const v0, 0x102036f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mOne:Landroid/widget/ImageButton;

    .line 423
    const v0, 0x1020370

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mTwo:Landroid/widget/ImageButton;

    .line 424
    const v0, 0x1020371

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mThree:Landroid/widget/ImageButton;

    .line 425
    const v0, 0x1020372

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mFour:Landroid/widget/ImageButton;

    .line 426
    const v0, 0x1020373

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mFive:Landroid/widget/ImageButton;

    .line 427
    const v0, 0x1020374

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mSix:Landroid/widget/ImageButton;

    .line 428
    const v0, 0x1020375

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mSeven:Landroid/widget/ImageButton;

    .line 429
    const v0, 0x1020376

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mEight:Landroid/widget/ImageButton;

    .line 430
    const v0, 0x1020377

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mNine:Landroid/widget/ImageButton;

    .line 431
    const v0, 0x10202a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mBackButton:Landroid/widget/ImageButton;

    .line 432
    const v0, 0x1020352

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mOkButton:Landroid/widget/ImageButton;

    .line 434
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mZero:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mOne:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mTwo:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mThree:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mFour:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mFive:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mSix:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mSeven:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mEight:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mNine:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mOkButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 465
    const/4 v0, -0x1

    .line 466
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mZero:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_1

    .line 467
    const/4 v0, 0x0

    .line 487
    :cond_0
    :goto_0
    return v0

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mOne:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_2

    .line 469
    const/4 v0, 0x1

    goto :goto_0

    .line 470
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mTwo:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_3

    .line 471
    const/4 v0, 0x2

    goto :goto_0

    .line 472
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mThree:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_4

    .line 473
    const/4 v0, 0x3

    goto :goto_0

    .line 474
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mFour:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_5

    .line 475
    const/4 v0, 0x4

    goto :goto_0

    .line 476
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mFive:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_6

    .line 477
    const/4 v0, 0x5

    goto :goto_0

    .line 478
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mSix:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_7

    .line 479
    const/4 v0, 0x6

    goto :goto_0

    .line 480
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mSeven:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_8

    .line 481
    const/4 v0, 0x7

    goto :goto_0

    .line 482
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mEight:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_9

    .line 483
    const/16 v0, 0x8

    goto :goto_0

    .line 484
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mNine:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 485
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->access$300(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 451
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mBackButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    #calls: Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->handleBackButton()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->access$400(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mOkButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_2

    .line 455
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    #calls: Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->verifyPasswordAndUnlock()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->access$500(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)V

    goto :goto_0

    .line 457
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 458
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 459
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    #calls: Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->reportDigit(I)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->access$600(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;I)V

    goto :goto_0
.end method
