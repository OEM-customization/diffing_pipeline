.class final Ljava/security/SecureRandom$StrongPatternHolder;
.super Ljava/lang/Object;
.source "SecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/SecureRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StrongPatternHolder"
.end annotation


# static fields
.field private static greylist-max-o pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 596
    nop

    .line 597
    const-string v0, "\\s*([\\S&&[^:,]]*)(\\:([\\S&&[^,]]*))?\\s*(\\,(.*))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/security/SecureRandom$StrongPatternHolder;->pattern:Ljava/util/regex/Pattern;

    .line 596
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000()Ljava/util/regex/Pattern;
    .registers 1

    .line 584
    sget-object v0, Ljava/security/SecureRandom$StrongPatternHolder;->pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method
