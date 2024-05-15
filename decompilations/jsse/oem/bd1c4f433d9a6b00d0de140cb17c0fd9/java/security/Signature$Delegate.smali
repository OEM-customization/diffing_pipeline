.class Ljava/security/Signature$Delegate;
.super Ljava/security/Signature;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Delegate"
.end annotation


# static fields
.field private static final I_PRIV:I = 0x2

.field private static final I_PRIV_SR:I = 0x3

.field private static final I_PUB:I = 0x1

.field private static warnCount:I


# instance fields
.field private final lock:Ljava/lang/Object;

.field private sigSpi:Ljava/security/SignatureSpi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1208
    const/16 v0, 0xa

    sput v0, Ljava/security/Signature$Delegate;->warnCount:I

    .line 1117
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 1159
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 1160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    .line 1161
    return-void
.end method

.method constructor <init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V
    .registers 4
    .param p1, "sigSpi"    # Ljava/security/SignatureSpi;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 1151
    invoke-direct {p0, p2}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 1152
    iput-object p1, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    .line 1153
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    .line 1154
    return-void
.end method

.method private chooseProvider(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1278
    iget-object v8, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 1281
    :try_start_3
    iget-object v7, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    if-eqz v7, :cond_10

    if-nez p2, :cond_10

    .line 1282
    iget-object v7, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-direct {p0, v7, p1, p2, p3}, Ljava/security/Signature$Delegate;->init(Ljava/security/SignatureSpi;ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_6a

    monitor-exit v8

    .line 1283
    return-void

    .line 1285
    :cond_10
    const/4 v2, 0x0

    .line 1288
    .local v2, "lastException":Ljava/lang/Exception;
    :try_start_11
    invoke-static {p0}, Ljava/security/Signature;->-get0(Ljava/security/Signature;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "NONEwithRSA"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 1289
    invoke-static {}, Ljava/security/Signature;->-get1()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lsun/security/jca/GetInstance;->getServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1294
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :goto_26
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2    # "lastException":Ljava/lang/Exception;
    .local v5, "s$iterator":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 1297
    .local v4, "s":Ljava/security/Provider$Service;
    invoke-virtual {v4, p2}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 1301
    invoke-static {v4}, Ljava/security/Signature;->-wrap0(Ljava/security/Provider$Service;)Z
    :try_end_3f
    .catchall {:try_start_11 .. :try_end_3f} :catchall_6a

    move-result v7

    if-eqz v7, :cond_2a

    .line 1305
    :try_start_42
    invoke-static {v4}, Ljava/security/Signature$Delegate;->newInstance(Ljava/security/Provider$Service;)Ljava/security/SignatureSpi;

    move-result-object v6

    .line 1306
    .local v6, "spi":Ljava/security/SignatureSpi;
    invoke-direct {p0, v6, p1, p2, p3}, Ljava/security/Signature$Delegate;->init(Ljava/security/SignatureSpi;ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 1307
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v7

    iput-object v7, p0, Ljava/security/Signature$Delegate;->provider:Ljava/security/Provider;

    .line 1308
    iput-object v6, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_51} :catch_5f
    .catchall {:try_start_42 .. :try_end_51} :catchall_6a

    monitor-exit v8

    .line 1314
    return-void

    .line 1291
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .end local v4    # "s":Ljava/security/Provider$Service;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    .end local v6    # "spi":Ljava/security/SignatureSpi;
    .restart local v2    # "lastException":Ljava/lang/Exception;
    :cond_53
    :try_start_53
    const-string/jumbo v7, "Signature"

    .line 1292
    invoke-static {p0}, Ljava/security/Signature;->-get0(Ljava/security/Signature;)Ljava/lang/String;

    move-result-object v9

    .line 1291
    invoke-static {v7, v9}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    goto :goto_26

    .line 1315
    .end local v2    # "lastException":Ljava/lang/Exception;
    .restart local v4    # "s":Ljava/security/Provider$Service;
    .restart local v5    # "s$iterator":Ljava/util/Iterator;
    :catch_5f
    move-exception v0

    .line 1319
    .local v0, "e":Ljava/lang/Exception;
    if-nez v2, :cond_63

    .line 1320
    move-object v2, v0

    .line 1323
    :cond_63
    instance-of v7, v2, Ljava/security/InvalidKeyException;

    if-eqz v7, :cond_2a

    .line 1324
    check-cast v2, Ljava/security/InvalidKeyException;

    throw v2
    :try_end_6a
    .catchall {:try_start_53 .. :try_end_6a} :catchall_6a

    .line 1278
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .end local v4    # "s":Ljava/security/Provider$Service;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :catchall_6a
    move-exception v7

    monitor-exit v8

    throw v7

    .line 1329
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .restart local v5    # "s$iterator":Ljava/util/Iterator;
    :cond_6d
    :try_start_6d
    instance-of v7, v2, Ljava/security/InvalidKeyException;

    if-eqz v7, :cond_74

    .line 1330
    check-cast v2, Ljava/security/InvalidKeyException;

    throw v2

    .line 1332
    :cond_74
    instance-of v7, v2, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_7b

    .line 1333
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 1335
    :cond_7b
    if-eqz p2, :cond_9f

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1336
    .local v1, "k":Ljava/lang/String;
    :goto_85
    new-instance v7, Ljava/security/InvalidKeyException;

    .line 1337
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No installed provider supports this key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1336
    invoke-direct {v7, v9, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1335
    .end local v1    # "k":Ljava/lang/String;
    :cond_9f
    const-string/jumbo v1, "(null)"
    :try_end_a2
    .catchall {:try_start_6d .. :try_end_a2} :catchall_6a

    .restart local v1    # "k":Ljava/lang/String;
    goto :goto_85
.end method

.method private init(Ljava/security/SignatureSpi;ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 8
    .param p1, "spi"    # Ljava/security/SignatureSpi;
    .param p2, "type"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1348
    packed-switch p2, :pswitch_data_30

    .line 1359
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Internal error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1350
    :pswitch_1d
    check-cast p3, Ljava/security/PublicKey;

    .end local p3    # "key":Ljava/security/Key;
    invoke-virtual {p1, p3}, Ljava/security/SignatureSpi;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 1361
    :goto_22
    return-void

    .line 1353
    .restart local p3    # "key":Ljava/security/Key;
    :pswitch_23
    check-cast p3, Ljava/security/PrivateKey;

    .end local p3    # "key":Ljava/security/Key;
    invoke-virtual {p1, p3}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    goto :goto_22

    .line 1356
    .restart local p3    # "key":Ljava/security/Key;
    :pswitch_29
    check-cast p3, Ljava/security/PrivateKey;

    .end local p3    # "key":Ljava/security/Key;
    invoke-virtual {p1, p3, p4}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_22

    .line 1348
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_23
        :pswitch_29
    .end packed-switch
.end method

.method private static newInstance(Ljava/security/Provider$Service;)Ljava/security/SignatureSpi;
    .registers 7
    .param p0, "s"    # Ljava/security/Provider$Service;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1189
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Cipher"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1192
    :try_start_d
    const-string/jumbo v3, "RSA/ECB/PKCS1Padding"

    invoke-virtual {p0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v4

    invoke-static {v3, v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1193
    .local v0, "c":Ljavax/crypto/Cipher;
    new-instance v3, Ljava/security/Signature$CipherAdapter;

    invoke-direct {v3, v0}, Ljava/security/Signature$CipherAdapter;-><init>(Ljavax/crypto/Cipher;)V
    :try_end_1d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_d .. :try_end_1d} :catch_1e

    return-object v3

    .line 1194
    .end local v0    # "c":Ljavax/crypto/Cipher;
    :catch_1e
    move-exception v1

    .line 1195
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v3, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1198
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :cond_25
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1199
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/SignatureSpi;

    if-nez v3, :cond_50

    .line 1200
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    .line 1201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not a SignatureSpi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1200
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1203
    :cond_50
    check-cast v2, Ljava/security/SignatureSpi;

    .end local v2    # "o":Ljava/lang/Object;
    return-object v2
.end method


# virtual methods
.method chooseFirstProvider()V
    .registers 10

    .prologue
    .line 1216
    iget-object v6, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    if-eqz v6, :cond_5

    .line 1217
    return-void

    .line 1219
    :cond_5
    iget-object v7, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 1220
    :try_start_8
    iget-object v6, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_65

    if-eqz v6, :cond_e

    monitor-exit v7

    .line 1221
    return-void

    .line 1239
    :cond_e
    const/4 v2, 0x0

    .line 1242
    .local v2, "lastException":Ljava/lang/Exception;
    :try_start_f
    invoke-static {p0}, Ljava/security/Signature;->-get0(Ljava/security/Signature;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "NONEwithRSA"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 1243
    invoke-static {}, Ljava/security/Signature;->-get1()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lsun/security/jca/GetInstance;->getServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1248
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :goto_24
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2    # "lastException":Ljava/lang/Exception;
    .local v5, "s$iterator":Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 1250
    .local v4, "s":Ljava/security/Provider$Service;
    invoke-static {v4}, Ljava/security/Signature;->-wrap0(Ljava/security/Provider$Service;)Z
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_65

    move-result v6

    if-eqz v6, :cond_28

    .line 1254
    :try_start_3a
    invoke-static {v4}, Ljava/security/Signature$Delegate;->newInstance(Ljava/security/Provider$Service;)Ljava/security/SignatureSpi;

    move-result-object v6

    iput-object v6, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    .line 1255
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    iput-object v6, p0, Ljava/security/Signature$Delegate;->provider:Ljava/security/Provider;
    :try_end_46
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3a .. :try_end_46} :catch_54
    .catchall {:try_start_3a .. :try_end_46} :catchall_65

    monitor-exit v7

    .line 1262
    return-void

    .line 1245
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .end local v4    # "s":Ljava/security/Provider$Service;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    .restart local v2    # "lastException":Ljava/lang/Exception;
    :cond_48
    :try_start_48
    const-string/jumbo v6, "Signature"

    .line 1246
    invoke-static {p0}, Ljava/security/Signature;->-get0(Ljava/security/Signature;)Ljava/lang/String;

    move-result-object v8

    .line 1245
    invoke-static {v6, v8}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    goto :goto_24

    .line 1263
    .end local v2    # "lastException":Ljava/lang/Exception;
    .restart local v4    # "s":Ljava/security/Provider$Service;
    .restart local v5    # "s$iterator":Ljava/util/Iterator;
    :catch_54
    move-exception v0

    .line 1264
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v2, v0

    .local v2, "lastException":Ljava/lang/Exception;
    goto :goto_28

    .line 1267
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "lastException":Ljava/lang/Exception;
    .end local v4    # "s":Ljava/security/Provider$Service;
    :cond_57
    new-instance v1, Ljava/security/ProviderException;

    .line 1268
    const-string/jumbo v6, "Could not construct SignatureSpi instance"

    .line 1267
    invoke-direct {v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 1269
    .local v1, "e":Ljava/security/ProviderException;
    if-eqz v2, :cond_64

    .line 1270
    invoke-virtual {v1, v2}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1272
    :cond_64
    throw v1
    :try_end_65
    .catchall {:try_start_48 .. :try_end_65} :catchall_65

    .line 1219
    .end local v1    # "e":Ljava/security/ProviderException;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :catchall_65
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1172
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1173
    iget-object v2, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    instance-of v2, v2, Ljava/lang/Cloneable;

    if-eqz v2, :cond_1f

    .line 1174
    iget-object v2, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v2}, Ljava/security/SignatureSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SignatureSpi;

    .line 1179
    .local v0, "sigSpiClone":Ljava/security/SignatureSpi;
    new-instance v1, Ljava/security/Signature$Delegate;

    invoke-static {p0}, Ljava/security/Signature;->-get0(Ljava/security/Signature;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/security/Signature$Delegate;-><init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V

    .line 1180
    .local v1, "that":Ljava/security/Signature;
    iget-object v2, p0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    iput-object v2, v1, Ljava/security/Signature;->provider:Ljava/security/Provider;

    .line 1181
    return-object v1

    .line 1183
    .end local v0    # "sigSpiClone":Ljava/security/SignatureSpi;
    .end local v1    # "that":Ljava/security/Signature;
    :cond_1f
    new-instance v2, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v2}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v2
.end method

.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1449
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1450
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 1454
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1455
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0}, Ljava/security/SignatureSpi;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1378
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    if-eqz v0, :cond_b

    if-nez p1, :cond_11

    .line 1379
    :cond_b
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 1383
    :goto_10
    return-void

    .line 1381
    :cond_11
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, v1}, Ljava/security/Signature$Delegate;->chooseProvider(ILjava/security/Key;Ljava/security/SecureRandom;)V

    goto :goto_10
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1389
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    if-eqz v0, :cond_a

    if-nez p1, :cond_10

    .line 1390
    :cond_a
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 1394
    :goto_f
    return-void

    .line 1392
    :cond_10
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Ljava/security/Signature$Delegate;->chooseProvider(ILjava/security/Key;Ljava/security/SecureRandom;)V

    goto :goto_f
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1367
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    if-eqz v0, :cond_b

    if-nez p1, :cond_11

    .line 1368
    :cond_b
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 1372
    :goto_10
    return-void

    .line 1370
    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v1}, Ljava/security/Signature$Delegate;->chooseProvider(ILjava/security/Key;Ljava/security/SecureRandom;)V

    goto :goto_10
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1437
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1438
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/SignatureSpi;->engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1439
    return-void
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 1443
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1444
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1445
    return-void
.end method

.method protected engineSign([BII)I
    .registers 5
    .param p1, "outbuf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1419
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1420
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineSign([BII)I

    move-result v0

    return v0
.end method

.method protected engineSign()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1413
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1414
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0}, Ljava/security/SignatureSpi;->engineSign()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineUpdate(B)V
    .registers 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1397
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1398
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineUpdate(B)V

    .line 1399
    return-void
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1408
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1409
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 1410
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1403
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1404
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineUpdate([BII)V

    .line 1405
    return-void
.end method

.method protected engineVerify([B)Z
    .registers 3
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1425
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1426
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineVerify([B)Z

    move-result v0

    return v0
.end method

.method protected engineVerify([BII)Z
    .registers 5
    .param p1, "sigBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1431
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1432
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineVerify([BII)Z

    move-result v0

    return v0
.end method

.method public getCurrentSpi()Ljava/security/SignatureSpi;
    .registers 3

    .prologue
    .line 1461
    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    if-nez v0, :cond_7

    .line 1462
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    return-object v0

    .line 1464
    :cond_7
    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1465
    :try_start_a
    iget-object v1, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_e

    monitor-exit v0

    return-object v1

    .line 1464
    :catchall_e
    move-exception v1

    monitor-exit v0

    throw v1
.end method
