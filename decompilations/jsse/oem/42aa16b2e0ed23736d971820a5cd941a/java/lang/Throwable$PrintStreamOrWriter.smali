.class abstract Ljava/lang/Throwable$PrintStreamOrWriter;
.super Ljava/lang/Object;
.source "Throwable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Throwable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PrintStreamOrWriter"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Throwable$1;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Throwable$1;

    .line 742
    invoke-direct {p0}, Ljava/lang/Throwable$PrintStreamOrWriter;-><init>()V

    return-void
.end method


# virtual methods
.method abstract greylist-max-o lock()Ljava/lang/Object;
.end method

.method abstract greylist-max-o println(Ljava/lang/Object;)V
.end method
