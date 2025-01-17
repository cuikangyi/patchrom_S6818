.class public Landroid/hardware/scontext/SContextEvent;
.super Ljava/lang/Object;
.source "SContextEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

.field private mApproachContext:Landroid/hardware/scontext/SContextApproach;

.field private mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

.field private mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

.field private mMotionContext:Landroid/hardware/scontext/SContextMotion;

.field private mMovementContext:Landroid/hardware/scontext/SContextMovement;

.field private mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

.field private mSleepMonitorContext:Landroid/hardware/scontext/SContextSleepMonitor;

.field private mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

.field public scontext:Landroid/hardware/scontext/SContext;

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/hardware/scontext/SContextEvent$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/scontext/SContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    const-class v0, Landroid/hardware/scontext/SContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContext;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    const-class v0, Landroid/hardware/scontext/SContextApproach;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextApproach;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    const-class v0, Landroid/hardware/scontext/SContextPedometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextPedometer;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    const-class v0, Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextStepCountAlert;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    const-class v0, Landroid/hardware/scontext/SContextMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextMotion;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    const-class v0, Landroid/hardware/scontext/SContextMovement;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextMovement;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    const-class v0, Landroid/hardware/scontext/SContextAutoRotation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextAutoRotation;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    const-class v0, Landroid/hardware/scontext/SContextAirMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextAirMotion;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

    const-class v0, Landroid/hardware/scontext/SContextSleepMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextSleepMonitor;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mSleepMonitorContext:Landroid/hardware/scontext/SContextSleepMonitor;

    const-class v0, Landroid/hardware/scontext/SContextEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextEnvironment;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAirMotionContext()Landroid/hardware/scontext/SContextAirMotion;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

    return-object v0
.end method

.method public getApproachContext()Landroid/hardware/scontext/SContextApproach;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    return-object v0
.end method

.method public getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    return-object v0
.end method

.method public getEnvironmentContext()Landroid/hardware/scontext/SContextEnvironment;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

    return-object v0
.end method

.method public getMotionContext()Landroid/hardware/scontext/SContextMotion;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    return-object v0
.end method

.method public getMovementContext()Landroid/hardware/scontext/SContextMovement;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    return-object v0
.end method

.method public getPedometerContext()Landroid/hardware/scontext/SContextPedometer;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    return-object v0
.end method

.method public getSleepMonitorContext()Landroid/hardware/scontext/SContextSleepMonitor;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mSleepMonitorContext:Landroid/hardware/scontext/SContextSleepMonitor;

    return-object v0
.end method

.method public getStepCountAlertContext()Landroid/hardware/scontext/SContextStepCountAlert;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    return-object v0
.end method

.method setAirMotionContext(Landroid/hardware/scontext/SContextAirMotion;)V
    .locals 0
    .parameter "airMotionContext"

    .prologue
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

    return-void
.end method

.method setApproachContext(Landroid/hardware/scontext/SContextApproach;)V
    .locals 0
    .parameter "approachContext"

    .prologue
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    return-void
.end method

.method setAutoRotationContext(Landroid/hardware/scontext/SContextAutoRotation;)V
    .locals 0
    .parameter "autoRotationContext"

    .prologue
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    return-void
.end method

.method setEnvironmentContext(Landroid/hardware/scontext/SContextEnvironment;)V
    .locals 0
    .parameter "environmentContext"

    .prologue
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

    return-void
.end method

.method setMotionContext(Landroid/hardware/scontext/SContextMotion;)V
    .locals 0
    .parameter "motionContext"

    .prologue
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    return-void
.end method

.method setMovementContext(Landroid/hardware/scontext/SContextMovement;)V
    .locals 0
    .parameter "movementContext"

    .prologue
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    return-void
.end method

.method setPedometerContext(Landroid/hardware/scontext/SContextPedometer;)V
    .locals 0
    .parameter "pedometerContext"

    .prologue
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    return-void
.end method

.method setSleepMonitorContext(Landroid/hardware/scontext/SContextSleepMonitor;)V
    .locals 0
    .parameter "sleepMonitorContext"

    .prologue
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mSleepMonitorContext:Landroid/hardware/scontext/SContextSleepMonitor;

    return-void
.end method

.method setStepCountAlertContext(Landroid/hardware/scontext/SContextStepCountAlert;)V
    .locals 0
    .parameter "stepCountAlertContext"

    .prologue
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mSleepMonitorContext:Landroid/hardware/scontext/SContextSleepMonitor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
