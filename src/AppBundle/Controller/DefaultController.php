<?php

namespace AppBundle\Controller;

use Doctrine\ORM\Mapping\Entity;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
//use Symfony\Component\BrowserKit\Response;
use Symfony\Component\HttpFoundation\Request;
use AppBundle\Form\FormType;
use AppBundle\Entity\User;
use AppBundle\Entity\About;
use Doctrine\ORM\Tools\Pagination\Paginator;
use Symfony\Component\HttpFoundation\Response;


class DefaultController extends Controller
{

    /**
     * @Route("/book/{page}/{order}/{order_d}", defaults={"page" = 1,"order" = "", "order_d" = "DESC"}, name = "bookpage")
     *
     */
    public function bookAction(Request $request,$page,$order,$order_d)
    {
        //кол-во записей на странице
        $rows_per_page = 15;

        if ($order == 'name')
        {
            $result= $this->getDoctrine()
                ->getRepository('AppBundle:User')
                ->sortByUser($page, $rows_per_page,$order_d);
        }
        elseif ($order == 'date')
        {
            $result= $this->getDoctrine()
                ->getRepository('AppBundle:User')
                ->sortByDate($page, $rows_per_page,$order_d);
        }
        elseif ($order == 'email')
        {
            $result= $this->getDoctrine()
                ->getRepository('AppBundle:User')
                ->sortByEmail($page, $rows_per_page,$order_d);
        }else{
            $result= $this->getDoctrine()
                ->getRepository('AppBundle:User')
                ->getAllPosts($page, $rows_per_page);
        }
        $all_posts = new Paginator($result);

        $total_rows = count($all_posts);
        $total_pages = ceil($total_rows/$rows_per_page);

        $user = new User();


        $form = $this->createForm(FormType::class, $user);
        $form->handleRequest($request);
        if ($form->isValid()) {


            $ip = $_SERVER['REMOTE_ADDR'];
            $about = new About();

            //Тестовый IP адрес
            $about_ip = json_decode(file_get_contents('http://ip-api.com/json/127.0.0.1'),TRUE);

            if($about_ip['status'] == 'success')
            {
                $about->setCountry($about_ip['country']);
                $about->setRegion($about_ip['city']);
                $about->setIp($ip);

            }else{

                $about->setIp($ip);
            }
            $about->addUser($user);
            $about->setBrowser(strip_tags($_SERVER['HTTP_USER_AGENT']));
            $user->setCreatedAt(new \DateTime());
            $user->setAbout($about);
            $em = $this->getDoctrine()->getManager();
            $em->persist($user);
            $em->persist($about);
            //INSERT в базу
            $em->flush();

            $form = $this->createForm(FormType::class);

        }

        return $this->render(
            'default/index.html.twig',
            array('form' => $form->createView(),'posts' => $all_posts,
                'total_pages'=>$total_pages,'current_page'=>$page,'order'=> $order, 'order_d'=>$order_d)
        );
    }

    /**
     * @Route("/", name = "homepage")
     *
     */
    public function homeAction()
    {

        return $this->redirectToRoute('bookpage');
            
    }
}
