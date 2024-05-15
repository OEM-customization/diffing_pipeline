.class public final synthetic Ljava/time/-$$Lambda$OffsetDateTime$d2QSmDYEJWeXCg2rcQuxVNPk3n4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/time/-$$Lambda$OffsetDateTime$d2QSmDYEJWeXCg2rcQuxVNPk3n4;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/time/-$$Lambda$OffsetDateTime$d2QSmDYEJWeXCg2rcQuxVNPk3n4;

    invoke-direct {v0}, Ljava/time/-$$Lambda$OffsetDateTime$d2QSmDYEJWeXCg2rcQuxVNPk3n4;-><init>()V

    sput-object v0, Ljava/time/-$$Lambda$OffsetDateTime$d2QSmDYEJWeXCg2rcQuxVNPk3n4;->INSTANCE:Ljava/time/-$$Lambda$OffsetDateTime$d2QSmDYEJWeXCg2rcQuxVNPk3n4;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/time/OffsetDateTime;

    check-cast p2, Ljava/time/OffsetDateTime;

    invoke-static {p1, p2}, Ljava/time/OffsetDateTime;->lambda$d2QSmDYEJWeXCg2rcQuxVNPk3n4(Ljava/time/OffsetDateTime;Ljava/time/OffsetDateTime;)I

    move-result p1

    return p1
.end method
