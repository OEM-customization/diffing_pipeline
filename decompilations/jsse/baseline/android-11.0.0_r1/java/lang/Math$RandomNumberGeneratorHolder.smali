.class final Ljava/lang/Math$RandomNumberGeneratorHolder;
.super Ljava/lang/Object;
.source "Math.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Math;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomNumberGeneratorHolder"
.end annotation


# static fields
.field static final greylist-max-o randomNumberGenerator:Ljava/util/Random;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 741
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
