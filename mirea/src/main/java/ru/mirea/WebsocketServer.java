package ru.mirea;

import org.java_websocket.WebSocket;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.server.WebSocketServer;
import ru.mirea.data.DataImpl;
import ru.mirea.data.Peresdachi;

import java.net.InetSocketAddress;
import java.nio.charset.StandardCharsets;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

public class WebsocketServer extends WebSocketServer {

    private static int TCP_PORT = 4444;

    private Set<WebSocket> conns;

    private DataImpl dataImpl = (DataImpl) MireaApplication.ctx.getBean("dataImpl");

    public WebsocketServer() {
        super(new InetSocketAddress(TCP_PORT));
        conns = new HashSet<>();
    }

    @Override
    public void onOpen(WebSocket conn, ClientHandshake handshake) {
        conns.add(conn);
        System.out.println("New connection from " + conn.getRemoteSocketAddress().getAddress().getHostAddress());
    }

    @Override
    public void onClose(WebSocket conn, int code, String reason, boolean remote) {
        conns.remove(conn);
        System.out.println("Closed connection to " + conn.getRemoteSocketAddress().getAddress().getHostAddress());
    }

    @Override
    public void onMessage(WebSocket conn, String message) {
        String secondString = new String(message.getBytes(StandardCharsets.UTF_8));
        if(Objects.equals(secondString, "ИКБО-16-20")) System.out.println("yes1");
        System.out.println("Message from client: " + secondString);
        for (WebSocket sock : conns) {
            sock.send(secondString);//Отправили на клиент
        }
        String allPeres = "";
        for (Peresdachi per : dataImpl.findGroupByLike(secondString))
        {
            //System.out.println(per);
            allPeres = allPeres + "\n" +per;
        }
        System.out.println(allPeres);
        for (WebSocket sock : conns) {
            sock.send(allPeres);//Отправили на клиент
        }
        //DbHandler.searchInDb(secondString);
    }

    @Override
    public void onError(WebSocket conn, Exception ex) {
        //ex.printStackTrace();
        if (conn != null) {
            conns.remove(conn);
            // do some thing if required
        }
        System.out.println("ERROR from " + conn.getRemoteSocketAddress().getAddress().getHostAddress());
    }

    @Override
    public void onStart() {

    }
}
