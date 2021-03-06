<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Captcha\Bundle\CaptchaBundle\Validator\Constraints as CaptchaAssert;

/**
 * Entity
 *
 * @ORM\Table(name="user")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\UserRepository")
 */
class User
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=255)
     * @Assert\Regex(
     *     pattern="/^[a-zA-Z]+[a-zA-Z0-9]*$/",
     *     match=true,
     *     message="Только цифры и буквы латинского алфавита"
     * )
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="email", type="string", length=255)
     * @Assert\NotBlank()
     * @Assert\Email(message = "Неверный формат :(")
     */
    private $email;



    /**
     * @var string
     *
     * @ORM\Column(name="text", type="text")
     *
     */
    private $text;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="createdAt", type="datetime")
     */
    private $createdAt;

    /**
     * @ORM\ManyToOne(targetEntity="About", inversedBy="users")
     * @ORM\JoinColumn(name="about_id", referencedColumnName="id")
     */
    protected $about;

    /**
     * @CaptchaAssert\ValidCaptcha(
     *      message = "CAPTCHA заполнена неверно."
     * )
     */
    protected $captchaCode;

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set name
     *
     * @param string $name
     * @return User
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string 
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set email
     *
     * @param string $email
     * @return User
     */
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Get email
     *
     * @return string 
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set createdAt
     *
     * @param \DateTime $createdAt
     * @return User
     */
    public function setCreatedAt($createdAt)
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    /**
     * Get createdAt
     *
     * @return \DateTime 
     */
    public function getCreatedAt()
    {
        return $this->createdAt;
    }

    /**
     * Set text
     *
     * @param string $text
     * @return User
     */
    public function setText($text)
    {
        $this->text = strip_tags($text);

        return $this;
    }

    /**
     * Get text
     *
     * @return string 
     */
    public function getText()
    {
        return $this->text;
    }

    public function getCaptchaCode()
    {
        return $this->captchaCode;
    }

    public function setCaptchaCode($captchaCode)
    {
        $this->captchaCode = $captchaCode;
    }

    /**
     * Set about
     *
     * @param \AppBundle\Entity\About $about
     * @return User
     */
    public function setAbout(\AppBundle\Entity\About $about = null)
    {
        $this->about = $about;

        return $this;
    }

    /**
     * Get about
     *
     * @return \AppBundle\Entity\About 
     */
    public function getAbout()
    {
        return $this->about;
    }
}
