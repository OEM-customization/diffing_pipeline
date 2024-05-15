.class public final synthetic Ljava/util/stream/-$$Lambda$Drw47GGUtPrz9CklhlT0v26u-5c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$Drw47GGUtPrz9CklhlT0v26u-5c;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$Drw47GGUtPrz9CklhlT0v26u-5c;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$Drw47GGUtPrz9CklhlT0v26u-5c;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$Drw47GGUtPrz9CklhlT0v26u-5c;->INSTANCE:Ljava/util/stream/-$$Lambda$Drw47GGUtPrz9CklhlT0v26u-5c;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/util/StringJoiner;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method
