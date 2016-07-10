<?php
/**
 * Created by PhpStorm.
 * User: enyakerch
 * Date: 07.07.16
 * Time: 18:49
 */


namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

use Symfony\Component\Form\Extension\Core\Type\TextType;



class FormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name', TextType::class)
            ->add('email')
            ->add('text','textarea', array('attr' => array('rows' => 5)))
            ->add('captchaCode', 'captcha', array(
                'captchaConfig' => 'GuestBook'
            ));
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\User',
        ));
    }
}